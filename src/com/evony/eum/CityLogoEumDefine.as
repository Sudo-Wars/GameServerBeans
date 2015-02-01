package com.evony.eum {
import mx.collections.ArrayCollection;

public class CityLogoEumDefine extends Object {

    private static var instance:CityLogoEumDefine = new CityLogoEumDefine();

    public static function getCityLogoArray():ArrayCollection {
        return instance.cityLogo;
    }

    public function CityLogoEumDefine() {
        super();
        this.cityLogo = new ArrayCollection();
        this.cityLogo.addItem("images/icon/cityLogo/citylogo_01.png");
        this.cityLogo.addItem("images/icon/cityLogo/citylogo_02.png");
        this.cityLogo.addItem("images/icon/cityLogo/citylogo_03.png");
        this.cityLogo.addItem("images/icon/cityLogo/citylogo_04.png");
    }

    private var cityLogo:ArrayCollection;
}
}
