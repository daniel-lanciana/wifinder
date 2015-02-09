module Api
  class CredentialsController < Api::BaseController

    private

    def credential_params
      params.require(:credential).permit(:name)
    end

    def query_params
      # this assumes that an album belongs to an artist and has an :artist_id
      # allowing us to filter by this
      params.permit(:hotspot_id, :name)
    end

  end
end