module Evropochta
  module Postal
    module CalculationTariff
      module_function

      def call(opts: {})
        Services::Shared.request(
          "Postal.CalculationTariff",
          {
            GoodsId: opts[:goods_id],
            PostDeliveryTypeId: opts[:post_delivery_type_id],
            PostalWeightId: opts[:postal_weight_id],
            IsFragile: opts[:is_fragile],
            IsInventory: opts[:is_inventory],
            IsCompletenessCheck: opts[:is_completeness_check],
            CashOnDeliverySum: opts[:cash_on_delivery_sum],
            CashOnDeliveryDeclareValueSum: opts[:cash_on_delivery_declare_value_sum],
            WarehouseIdFinish: opts[:warehouse_id_finish],
            Adress1IdReciever: opts[:adress1_id_reciever],
            IsJuristic: opts[:is_juristic],
            IsOversize: opts[:is_oversize],
            IsRelabeling: opts[:is_relabeling],
            IsRecieverShipping: opts[:is_reciever_shipping],
            AgreementTypeId: opts[:agreement_type_id]
          }
        )
      end
    end
  end
end
