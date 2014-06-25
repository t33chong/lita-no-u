module Lita
  module Handlers
    class NoU < Handler
      route(/\bno u\b/i, :no_u, command: false,
            help: {t("help.no_u_key") => t("help.no_u_value")})
      route(/^u$/i, :u, command: false,
            help: {t("help.u_key") => t("help.u_value")})

      def no_u(response)
        response.reply("no u")
      end

      def u(response)
        response.reply("u")
      end
    end

    Lita.register_handler(NoU)
  end
end
