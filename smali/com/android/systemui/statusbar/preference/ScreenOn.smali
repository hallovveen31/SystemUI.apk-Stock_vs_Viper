.class public Lcom/android/systemui/statusbar/preference/ScreenOn;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "ScreenOn.java"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSystemSettings:Landroid/database/ContentObserver;

.field private timeouts:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->timeouts:[I

    new-instance v0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preference/ScreenOn$1;-><init>(Lcom/android/systemui/statusbar/preference/ScreenOn;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSystemSettings:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->Cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/ScreenOn$2;-><init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/ScreenOn$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/ScreenOn$3;-><init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/ScreenOn$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/ScreenOn$4;-><init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->updateResources()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->init()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0xc8t 0xaft 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xc0t 0x27t 0x9t 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/ScreenOn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->refreshInfo()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/ScreenOn;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->getScreenTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/ScreenOn;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->getOldScreenTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/preference/ScreenOn;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->setScreenTimeout(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/preference/ScreenOn;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->setOldScreenTimeout(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/preference/ScreenOn;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->timeouts:[I

    return-object v0
.end method

.method private getOldScreenTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_old"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getScreenTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeTimeoutString(I)Ljava/lang/String;
    .locals 4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, -0x2

    if-ne p1, v2, :cond_1

    const-string v2, "Auto Sleep"

    goto :goto_0

    :cond_1
    const v0, 0x10403dd

    div-int/lit16 v1, p1, 0x3e8

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_2

    div-int/lit8 v1, v1, 0x3c

    const v0, 0x10403db

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private refreshInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->getScreenTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->refreshInfo(I)V

    return-void
.end method

.method private refreshInfo(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->makeTimeoutString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->timeouts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->timeouts:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setOldScreenTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_old"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setScreenTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->refreshInfo(I)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02053e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->timeouts:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->refreshInfo()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->Cr:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSystemSettings:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->Cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSystemSettings:Landroid/database/ContentObserver;

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
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->refreshInfo()V

    return-void
.end method
