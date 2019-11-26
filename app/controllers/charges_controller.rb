class ChargesController < ApplicationController

    def create
        # Amount in cents => exemple ! il faudra changer le montant pour qu'il varie en fonction de l'achat
        @amount = 500
    
        customer = Stripe::Customer.create({
          email: params[:stripeEmail],
          source: params[:stripeToken],
        })
    
        charge = Stripe::Charge.create({
          customer: customer.id,
          amount: @amount,
          description: 'Payement enligne',
          currency: 'eur',
        })
    
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end

end
