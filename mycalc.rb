use Rack::Auth::Basic, "Basic Payroll Calculator" do |username, password|
  [username, password] == ['sageonline', 'onpay12']
end

get '/' do
  erb :index
end

post '/' do
  calc = CalculatorGem::Calculator.new(params['TaxTable'])
  calc.province = params['province']
  #TODO change hardcoded birthday
  calc.birthday = Time.utc(1970,07,23).to_date
  calc.P = params['P'].to_f
  calc.I = params['I'].to_f
  calc.F = params['F'].to_f
  calc.F1 = params['F1'].to_f
  calc.F2 = params['F2'].to_f
  calc.U1 = params['U1'].to_f
  calc.HD = params['HD'].to_f
  calc.L = params['L'].to_f
  calc.D = params['D'].to_f
  calc.D1 = params['D1'].to_f
  calc.QPIP_YTD = params['QPIP_YTD'].to_f
  calc.TC = params['TC'].to_f
  calc.FED_LAB_TC = params['FED_LAB_TC'].to_f
  calc.K3 = params['K3'].to_f
  erb :taxes, :locals => { :calc => calc }
end