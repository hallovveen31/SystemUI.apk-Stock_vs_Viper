.class public Lcom/android/systemui/statusbar/preference/Brightness;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Brightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private changedByUser:Z

.field private mContext:Landroid/content/Context;

.field private mMinBrightness:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSystemSettings:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->changedByUser:Z

    new-instance v0, Lcom/android/systemui/statusbar/preference/Brightness$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preference/Brightness$1;-><init>(Lcom/android/systemui/statusbar/preference/Brightness;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSystemSettings:Landroid/database/ContentObserver;

    const-string v0, "Venom"

    const-string v1, "Brightness Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMinBrightness:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->updateResources()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/Brightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->updateState()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/Brightness;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->changedByUser:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/Brightness;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMinBrightness:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/preference/Brightness;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentBrightness()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isAutoBrightnessOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setAutoBrightness(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->changedByUser:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->isAutoBrightnessOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/preference/Brightness;->changedByUser:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->getCurrentBrightness()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMinBrightness:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    const-string v0, "Venom"

    const-string v1, "Brightness Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02052a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/Brightness;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/Brightness$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Brightness$2;-><init>(Lcom/android/systemui/statusbar/preference/Brightness;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMinBrightness:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->isAutoBrightnessOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/Brightness;->setAutoBrightness(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Venom"

    const-string v1, "Brightness OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->updateState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSystemSettings:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    const-string v0, "Venom"

    const-string v1, "Brightness Update Resources"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
