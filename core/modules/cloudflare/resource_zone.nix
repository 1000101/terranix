
# automatically generated, you should change resource_zone.json instead
# documentation : https://www.terraform.io/docs/providers/cloudflare/r/zone.html
{ config, lib, ... }:
with lib;
with types;
{
  options.cloudflare.resource.zone = mkOption {
    default = {};
    description = "";
    type = with types; attrsOf ( submodule {
      options = {
      # internal object that should not be overwritten.
      # used to generate references
      "_ref" = mkOption {
        type = with types; string;
        default = "cloudflare.zone";
        description = "";
      };

      # automatically generated, change the json file instead
      zone = mkOption {
        type = nullOr string;
        default = null;
        description = "- (Required) The DNS zone name which will be added.";
      };
      # automatically generated, change the json file instead
      paused = mkOption {
        type = nullOr string;
        default = null;
        description = "- (Optional) Boolean of whether this zone is paused (traffic bypasses Cloudflare). Default: false.";
      };
      # automatically generated, change the json file instead
      jump_start = mkOption {
        type = nullOr string;
        default = null;
        description = "- (Optional) Boolean of whether to scan for DNS records on creation. Ignored after zone is created. Default: false.";
      };
    }; });
  };

  config = mkIf config.cloudflare.enable {
    resource.cloudflare_zone = config.cloudflare.resource.zone;
  };

}

