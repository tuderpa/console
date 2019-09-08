<?php

namespace App\Nova;

use Laravel\Nova\Fields\ID;

use Laravel\Nova\Fields\Markdown;
use Ebess\AdvancedNovaMediaLibrary\Fields\Files;
use Ebess\AdvancedNovaMediaLibrary\Fields\Images;

use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Place;
use Laravel\Nova\Fields\Medialibrary;
use Silvanite\NovaFieldCheckboxes\Checkboxes;

use Laravel\Nova\Panel;
use Laravel\Nova\Fields\Number;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Trix;

use Laravel\Nova\Fields\Textarea;
use Laravel\Nova\Fields\Currency;
use Laravel\Nova\Http\Requests\NovaRequest;
use Outhebox\NovaHiddenField\HiddenField;
use Epartment\NovaDependencyContainer\HasDependencies;
use Epartment\NovaDependencyContainer\NovaDependencyContainer;

class Property extends Resource
{
    use HasDependencies;
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = 'App\Property';

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

    public static $group = 'Other';

    public static function label()
    {
        return 'Propiedades';
    }

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id',
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make()->sortable(),
            Text::make('Título de la publicación', 'title')->sortable()->help('Ej: PH en Villa Urquiza.'),
            Select::make('Operación', 'type')->options([
                'sell' => 'Venta',
                'rent' => 'Alquiler'
            ])->hideFromIndex()->displayUsingLabels(),

            Select::make('Tipo de inmueble', 'property_type')->options([
                'PH' => 'PH',
                'House' => 'Casa',
                'Apartament' => 'Departamento',
                'Loft' => 'Loft',
                'Cohouse' => 'Casa compartida',
                'Coapartament' => 'Departamento compartido',
                'Garage' => 'Cochera',
                'Comercial' => 'Local comercial',
                'Office' => 'Oficina'
            ])->displayUsingLabels(),

            Select::make('Moneda', 'currency')->options([
                'USD' => 'Dólares',
                '$' => 'Pesos'
            ])->hideFromIndex()->displayUsingLabels(),

            Currency::make('Precio','price')->format('%.2n')->hideFromIndex()->min(0)->step(1)->displayUsing(function($c) {
                return "$".$c;
            }),

            Select::make('Paga expensas', 'pay_expenses')->options([
                'true' => 'Paga',
                'false' => 'No paga'
            ])->displayUsingLabels()->hideFromIndex(),

            NovaDependencyContainer::make([
                Currency::make('Expensas','expenses')->format('%.2n')->hideFromIndex()->min(0)->step(1)->displayUsing(function($c) {
                    return "$".$c;
                }),
            ])->dependsOn('pay_expenses', 'true'),

            Number::make('Antigüedad', 'age')->hideFromIndex()->min(0)->max(300)->step(1)->displayUsing(function($c) {
               return $c . " años";
            }),
            Number::make('M² totales', 'meters_total')->hideFromIndex()->min(1)->max(1000)->step(1)->help('Ej: 80.')->displayUsing(function ($c) {
                return $c."m²";
            }),
            Number::make('M² cubiertos', 'meters_cover')->hideFromIndex()->min(1)->max(1000)->step(1)->help('Ej: 95.')->displayUsing(function ($c) {
                return $c."m²";}),

            Checkboxes::make('Ambientes', 'places')->options([
                'balcony' => 'Balcón',
                'kitchen' => 'Cocina',
                'service_dependency' => 'Dependencia de servicio',
                'studio' => 'Estudio',
                'garden' => 'Jardín',
                'living' => 'Living',
                'parrilla' => 'Parrilla',
                'playground' => 'Patio',
                'placards' => 'Placards',
                'playroom' => 'Playroom',
                'terrace' => 'Terraza',
                'toilette' => 'Toilette',
                'dressing_room' => 'Vestidor',
                'garage' => 'Cochera'
            ])->withoutTypeCasting()->hideFromIndex(),

        new Panel('Detalles', $this->detailsFields()),
            new Panel('Dirección del inmueble', $this->addressFields()),
            new Panel('Imágenes', $this->photos()),
        ];
    }

    protected function detailsFields()
    {
        return [
            Number::make('Cantidad de ambientes', 'rooms')->hideFromIndex()->withMeta(["value" => 1])->min(1)->max(50)->step(1),
            Number::make('Cantidad de dormitorios', 'bedrooms')->hideFromIndex()->withMeta(["value" => 1])->min(1)->max(50)->step(1),
            Number::make('Cantidad de baños', 'bathrooms')->hideFromIndex()->withMeta(["value" => 1])->min(1)->max(50)->step(1),
            Number::make('Cantidad de plantas', 'floors')->hideFromIndex()->withMeta(["value" => 1])->min(1)->max(50)->step(1),
            Select::make('Orientación', 'orientation')->options([
                'north' => 'Norte',
                'west' => 'Oeste',
                'south' => 'Sur',
                'east' => 'Este'
            ])->hideFromIndex()->displayUsingLabels(),

           Select::make('Disposición', 'disposition')->options([
               'front' => 'Frente',
               'back' => 'Contrafrente',
               'internal' => 'Interno',
               'side' => 'Lateral'
            ])->hideFromIndex()->displayUsingLabels(),


            Checkboxes::make('Comodidades y amenities', 'items')->options([
                'laundry' => 'Laundry',
                'sum' => 'Salon de usos múltiples',
                'gym' => 'Gimnasio',
                'sauna' => 'Sauna',
                'tvcable' => 'Cable',
                'heating' => 'Calefacción',
                'chimney' => 'Chimenea',
                'wifi' => 'WiFi',
                'air' => 'Aire acondicionado',
                'security' => 'Seguridad',
                'gas' => 'Gas natural'
            ])->withoutTypeCasting()->hideFromIndex()
        ];
    }

    protected function photos() {
        return [
            Images::make('Images', 'properties') // second parameter is the media collection name
           // ->conversionOnPreview('medium-size') // conversion used to display the "original" image
            ->conversionOnDetailView('thumb') // conversion used on the model's view
            ->conversionOnIndexView('thumb') // conversion used to display the image on the model's index page
            ->conversionOnForm('thumb') // conversion used to display the image on the model's form
            ->fullSize() // full size column
            ->rules('required') // validation rules for the collection of images
            // validation rules for the collection of images
            ->singleImageRules('dimensions:min_width=100')->setFileName(function($originalFilename, $extension, $model){
                return md5($originalFilename) . '.' . $extension;
            }),
        ];
    }

    protected function addressFields()
    {
        return [
            Place::make('Dirección completa', 'address_line_1')->countries(['AR'])->help(
                '<b>Ej.: Avenida Cabildo 3500, Capital Federal</b>. Completa con el nombre de la calle, número y ciudad. Después selecciona dirección sugerida de la lista.'
            ),
            Text::make('Barrio', 'neighborhood'),
            Text::make('Ciudad', 'city')->hideFromIndex(),
            Text::make('Provincia', 'state')->hideFromIndex(),
            HiddenField::make('longitude')->hideFromIndex(),
            HiddenField::make('latitude')->hideFromIndex(),
            Boolean::make('Publicado', 'published')
                ->trueValue('1')
                ->falseValue('0')

            //Text::make('Código Postal', 'postal_code')->hideFromIndex()->readonly(),
            //Country::make('País', 'country')->hideFromIndex()->readonly(),
        ];
    }
    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [];
    }
}
