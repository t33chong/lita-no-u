module Lita
  module Handlers
    class NoU < Handler
      route(/\bno u\b/i, :no_u, command: false,
            help: {t("help.no_u_key") => t("help.no_u_value")})
      route(/^u$/i, :u, command: false,
            help: {t("help.u_key") => t("help.u_value")})
      route(/^no thou$/i, :no_thou, command: false,
            help: {t("help.no_thou_key") => t("help.no_thou_value")})
      route(/^thou$/i, :thou, command: false,
            help: {t("help.thou_key") => t("help.thou_value")})

      def no_u(response)
        response.reply("no u")
      end

      def u(response)
        response.reply("u")
      end
  
      def no_thou(response)
        response.reply("no thou")
      end
      
      def thou(response)
        response.reply("thou")
      end
    end
    Lita.register_handler(NoU)
  end
end
