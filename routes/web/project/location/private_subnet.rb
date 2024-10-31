# frozen_string_literal: true

class Clover
  hash_branch(:project_location_prefix, "private-subnet") do |r|
    r.on String do |ps_name|
      unless (ps = @project.private_subnets_dataset.where(location: @location).where { {Sequel[:private_subnet][:name] => ps_name} }.first)
        response.status = 404
        r.halt
      end
      ps_endpoint_helper = Routes::Common::PrivateSubnetHelper.new(app: self, request: r, user: current_account, location: @location, resource: ps)

      r.on "connect" do
        r.post true do
          ps_endpoint_helper.connect(r.params["connected-subnet-ubid"])
        end
      end

      r.on "disconnect" do
        r.on String do |disconnecting_ps_ubid|
          r.post true do
            ps_endpoint_helper.disconnect(disconnecting_ps_ubid)
          end
        end
      end

      r.get true do
        ps_endpoint_helper.get
      end

      r.delete true do
        ps_endpoint_helper.delete
      end
    end
  end
end
