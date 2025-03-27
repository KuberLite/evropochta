module Evropochta
  module Postal
    module PutOrder
      extend Base

      module_function

      REQUIRED_KEYS = %i[
        goods_id
        post_delivery_type_id
        postal_weight_id
        warehouse_id_start
        phone_number_reciever
        name1_reciever
        name2_reciever
      ].freeze

      def call(opts: {})
        validate_required_keys(opts)

        data = {
          GoodsId: opts[:goods_id],
          PostDeliveryTypeId: opts[:post_delivery_type_id],
          PostalWeightId: opts[:postal_weight_id],
          IsFragile: opts[:is_fragile],
          IsInventory: opts[:is_inventory],
          IsCompletenessCheck: opts[:is_completeness_check],
          CashOnDeliverySum: opts[:cash_on_delivery_sum],
          CashOnDeliveryDeclareValueSum: opts[:cash_on_delivery_declare_value_sum],
          WarehouseIdStart: opts[:warehouse_id_start],
          WarehouseIdFinish: opts[:warehouse_id_finish],
          Adress1IdReciever: opts[:adress1_id_reciever],
          PhoneNumberReciever: opts[:phone_number_reciever],
          EMailReciever: opts[:email_reciever],
          Name1Reciever: opts[:name1_reciever],
          Name2Reciever: opts[:name2_reciever],
          Name3Reciever: opts[:name3_reciever],
          CashOnDeliveryMoneyBackId: opts[:cash_on_delivery_money_back_id],
          InfoSender: opts[:info_sender],
          PostalItemExternalId: opts[:postal_item_external_id],
          IsOversize: opts[:is_oversize],
          PostalHeight: opts[:postal_height],
          PostalWidth: opts[:postal_width],
          PostalLength: opts[:postal_length],
          IsAutoDeliveryFlag: opts[:is_auto_delivery_flag],
          AutoDeliveryTimeFrom: opts[:auto_delivery_time_from],
          AutoDeliveryTimeTo: opts[:auto_delivery_time_to],
          IsRelabeling: opts[:is_relabeling],
          IsRecieverShipping: opts[:is_reciever_shipping],
          IsRecieverPackaging: opts[:is_reciever_packaging],
          IsRecieverCashOnDelivery: opts[:is_reciever_cash_on_delivery],
          AgreementTypeId: opts[:agreement_type_id]
        }

        Services::Shared.request(
          "Postal.PutOrder",
          data.compact
        )
      end
    end
  end
end
