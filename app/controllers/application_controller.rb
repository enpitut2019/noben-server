class ApplicationController < ActionController::API
  private

  def handle_400(object)
    handle_error(400, 'Bad Request', detail: object.errors.messages)
  end

  def handle_error(status, message, detail:)
    render status: status, json: { status: status, message: message, detail: detail }
  end
end
