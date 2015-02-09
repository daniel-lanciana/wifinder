module Api
  class HotspotController < Api::BaseController

    private

    def hotspot_params
      params.require(:hotspot).permit(:name)
    end

    def query_params
      params.permit(:name)
    end

  end
end