module Evropochta
  module Postal
    module ChangeOrder
      module_function

      def call(opts: {})
        Services::Shared.request(
          "Postal.ChangeOrder",
          {
            Number: opts[:number],
            PostalItemExternalId: opts[:postal_item_external_id],
            PostDeliveryTypeIdNew: opts[:post_delivery_type_id_new],
            PostalWeightIdNew: opts[:postal_weight_id_new],
            IsFragileNew: opts[:is_fragile_new],
            IsInventoryNew: opts[:is_inventory_new],
            IsCompletenessCheckNew: opts[:is_completeness_check_new],
            CashOnDeliverySumNew: opts[:cash_on_delivery_sum_new],
            CashOnDeliveryDeclareValueSumNew: opts[:cash_on_delivery_declare_value_sum_new],
            WarehouseIdStartNew: opts[:warehouse_id_start_new],
            WarehouseIdFinishNew: opts[:warehouse_id_finish_new],
            Address1IdRecieverNew: opts[:address1_id_reciever_new],
            PhoneNumberRecieverNew: opts[:phone_number_reciever_new],
            EMailRecieverNew: opts[:email_reciever_new],
            Name1RecieverNew: opts[:name1_reciever_new],
            Name2RecieverNew: opts[:name2_reciever_new],
            Name3RecieverNew: opts[:name3_reciever_new],
            CashOnDeliveryMoneyBackIdNew: opts[:cash_on_delivery_money_back_id_new],
            InfoSenderNew: opts[:info_sender_new]
          }
        )
      end
    end
  end
end
