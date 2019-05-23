require 'airborne'

describe 'reloj api' do
  it 'el API retorna si la alarma esta sonando' do
    get 'https://relojdespertador.herokuapp.com/api/alarma/sonar?hora-alarma=07:20&hora-actual=07:19'
    expect_json(sonar: false)
  end
end