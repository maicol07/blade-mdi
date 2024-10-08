<?php

namespace Maicol07\BladeMdi\Test;

use Illuminate\Support\Str;

class RenderTest extends TestCase
{
    public function test_render()
    {
        $render = view('test')->render();

        $this->assertTrue(
            Str::contains(
                $render,
                '<svg id="some-id" style="color: #555;" some-data="1" class="some-class" fill="currentColor" xmlns="http://www.w3.org/2000/svg" id="mdi-abacus" viewBox="0 0 24 24"><path d="M5 5H7V11H5V5M10 5H8V11H10V5M5 19H7V13H5V19M10 13H8V19H10V17H15V15H10V13M2 21H4V3H2V21M20 3V7H13V5H11V11H13V9H20V15H18V13H16V19H18V17H20V21H22V3H20Z" /></svg>'
            )
        );
    }
}
