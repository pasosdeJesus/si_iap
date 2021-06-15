class CreateContexto < ActiveRecord::Migration[6.1]
  def change
    create_table :contexto do |t|
      t.text :nombre, limit: 254, null: false, collation: 'es_co_utf_8'
      t.integer :region_id, null: false
      t.date :fechaini, null: false
      t.date :fechafin, null: false
      t.text :politicoelectoral, limit: 5000
      t.text :social, limit: 5000
      t.text :megaproyectosempresas, limit: 5000
      t.text :economiainfraestructura, limit: 5000
      t.text :figurasterritoriales, limit: 5000
      t.text :recursosambientales, limit: 5000
      t.text :estructurasarmadas, limit: 5000
      t.text :estadoacuerdo, limit: 5000

      t.timestamps
    end
    add_foreign_key :contexto, :sivel2_gen_region, column: :region_id
  end
end
