# frozen_string_literal: true

class Clover
  hash_branch(:project_location_firewall_prefix, "firewall-rule") do |r|
    # This is api-only, but is only called from an r.on api? branch, so no check is needed here

    r.post true do
      authorize("Firewall:edit", @firewall.id)

      params = check_required_web_params(["cidr"])

      parsed_cidr = Validation.validate_cidr(params["cidr"])
      port_range = if params["port_range"].nil?
        [0, 65535]
      else
        params["port_range"] = Validation.validate_port_range(params["port_range"])
      end

      pg_range = Sequel.pg_range(port_range.first..port_range.last)

      firewall_rule = nil
      DB.transaction do
        firewall_rule = @firewall.insert_firewall_rule(parsed_cidr.to_s, pg_range)
        audit_log(firewall_rule, "create")
      end

      Serializers::FirewallRule.serialize(firewall_rule)
    end

    r.is :ubid_uuid do |id|
      firewall_rule = @firewall.firewall_rules_dataset[id:]
      check_found_object(firewall_rule)

      r.delete true do
        authorize("Firewall:edit", @firewall.id)
        DB.transaction do
          @firewall.remove_firewall_rule(firewall_rule)
          audit_log(firewall_rule, "destroy")
        end
        204
      end

      r.get true do
        authorize("Firewall:view", @firewall.id)
        Serializers::FirewallRule.serialize(firewall_rule)
      end
    end
  end
end
