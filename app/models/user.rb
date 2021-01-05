class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :pin, presence: true, length: { is: 5 }
  # emulating a db cause no db neede for this challenge
  def self.data 
        {
          info_text: " Sie können sich nun in den Versorgungsvertrag einschreiben.
                        Bitte geben Sie zuerst Ihren persönlichen PIN ein (diesen haben Sie
                        per SMS erhalten) und bestätigen mit „Anmelden“.
                        Anschließend erhalten Sie alle Informationen zum 
                        Versorgungsvertrag, den Therapieinhalten und die 
                        Teilnahmebedingungen.",
          dsec:  "Datenschutzbestimmungen",
          usage: "Nutzungsbedingungen",
          cb_text:  "Mit Eingabe des PINs und der Anmeldung bestätige ich, dass ich die 
                      x und x des Sanakey Portals gelesen und akzeptiert habe.",
          usage_link: 'https://www.sanakey.de/wp-content/uploads/2019/06/Nutzungsbedingungen-Sanakey-Portal-2.0-I-Stand-Mai-2019-1.pdf',
          dsec_link: 'https://www.sanakey.de/wp-content/uploads/2020/03/Datenschutzbestimmung-Sanakey-Portal-Stand-Februar-2020-1.pdf',
          info_title: 'Zusammenfassung',
          title: 'Herzlich Willkommen auf dem Sanakey-Portal!',
          password_hint: 'Ihr PIN soll exakt 5 Zeichen lang sein!'

    }
  end

  def self.change_status(msg)
    self.data['status'] = msg
  end
end
