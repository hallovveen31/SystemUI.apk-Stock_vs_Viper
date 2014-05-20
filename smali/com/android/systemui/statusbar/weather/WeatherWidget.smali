.class public Lcom/android/systemui/statusbar/weather/WeatherWidget;
.super Landroid/widget/RelativeLayout;
.source "WeatherWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "m0narX_weather"

.field private static final degreeC:Ljava/lang/String; = "\u00b0<sup><small>c</small></sup>"

.field private static final degreeF:Ljava/lang/String; = "\u00b0<sup><small>F</small></sup>"


# instance fields
.field private city:Landroid/widget/TextView;

.field private hiloTemp:Landroid/widget/TextView;

.field private isColorIcons:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mWspData:Lcom/htc/util/weather/WSPPData;

.field private requestedCityName:Ljava/lang/String;

.field private temp:Landroid/widget/TextView;

.field private unit:Ljava/lang/String;

.field private wIcon:Landroid/widget/ImageView;

.field private widgetMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/weather/WeatherWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->updateSettings()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/weather/WeatherWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->collapseStatusBar()V

    return-void
.end method

.method private collapseStatusBar()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initLayout()V
    .locals 5

    const/4 v4, 0x1

    const v1, 0x7f0700a0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->temp:Landroid/widget/TextView;

    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->hiloTemp:Landroid/widget/TextView;

    const v1, 0x7f07009f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->city:Landroid/widget/TextView;

    const v1, 0x7f07009d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->wIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->city:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    const v3, 0x2030037

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setCityColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->updateSettings()V

    new-instance v0, Lcom/android/systemui/statusbar/weather/WeatherWidget$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget$1;-><init>(Lcom/android/systemui/statusbar/weather/WeatherWidget;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;-><init>(Lcom/android/systemui/statusbar/weather/WeatherWidget;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_systemui_weather_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_citycolor"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_tempcolor"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_hilocolor"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_systemui_weatherloc"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_bgcolor"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setBackgroundColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_weather_bgcolor"

    const/high16 v2, -0x100

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setBackgroundColor(I)V

    return-void
.end method

.method private setCityColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->city:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_citycolor"

    const v3, -0x777778

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setHighLowColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->hiloTemp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_hilocolor"

    const v3, -0x777778

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTempColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->temp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_weather_tempcolor"

    const v3, -0x777778

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateSettings()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->requestedCityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_systemui_weatherloc"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->unit:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->unit:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->unit:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "c"

    iput-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->unit:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_systemui_weather_color"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->isColorIcons:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setCityColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setTempColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setHighLowColor()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCityNameByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.htc.htclocationservice"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "com.htc.elroy.Weather"

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->requestedCityName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->requestedCityName:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_1

    const-string v4, "m0narX_weather"

    const-string v5, "weather_locs is zero"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_2

    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->requestedCityName:Ljava/lang/String;

    const-string v4, ""

    goto :goto_0

    :cond_2
    aget-object v2, v3, v1

    :try_start_0
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->requestedCityName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->requestedCityName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->initLayout()V

    return-void
.end method

.method public startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/high16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to start activity"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateWeather()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    const-string v15, "Current"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mWspData:Lcom/htc/util/weather/WSPPData;

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mWspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mWspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v14}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    const-string v15, "Current"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_1
    const-string v14, "m0narX_weather"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "We don\'t have data for "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    invoke-static {v15}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mWspData:Lcom/htc/util/weather/WSPPData;

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    const-string v15, "Current"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mWspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v14}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "m0narX_weather"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "We don\'t have data for "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v14, "m0narX_weather"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Can\'t fill weather data for "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->getCityNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mWspData:Lcom/htc/util/weather/WSPPData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/util/weather/WSPPData;->getCurWeatherDataInfo(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const-string v14, "currConditionID"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->unit:Ljava/lang/String;

    const-string v15, "c"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "currTempC"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "highTempC"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "lowTempC"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "\u00b0<sup><small>c</small></sup>"

    :goto_3
    new-instance v13, Lcom/htc/weather/StateResources;

    invoke-direct {v13}, Lcom/htc/weather/StateResources;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_6
    const-string v14, "m0narX_weather"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "We don\'t have data for "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->widgetMode:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const-string v14, "currTempF"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "highTempF"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "lowTempF"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "\u00b0<sup><small>F</small></sup>"

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->isColorIcons:Z

    if-eqz v14, :cond_9

    sget-object v11, Lcom/htc/weather/StateResources$GRAPHIC_TYPE;->colorgraphic:Lcom/htc/weather/StateResources$GRAPHIC_TYPE;

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14, v11}, Lcom/htc/weather/StateResources;->getConditionIcon(ILcom/htc/weather/StateResources$GRAPHIC_TYPE;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "tweaks_tint_weather_icons"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v2, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->city:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "<b>"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</b>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "<br>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setCityColor()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->hiloTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "<br>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setHighLowColor()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->temp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setTempColor()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;->wIcon:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    sget-object v11, Lcom/htc/weather/StateResources$GRAPHIC_TYPE;->vectorgraphic_dark:Lcom/htc/weather/StateResources$GRAPHIC_TYPE;

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method
