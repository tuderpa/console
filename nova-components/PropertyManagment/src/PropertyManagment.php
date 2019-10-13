<?php

namespace Tuderpa\PropertyManagment;

use Laravel\Nova\Card;

class PropertyManagment extends Card
{
    /**
     * The width of the card (1/3, 1/2, or full).
     *
     * @var string
     */
    public $width = '1/2';

    /**
     * Get the component name for the element.
     *
     * @return string
     */
    public function component()
    {
        return 'property-managment';
    }
}
