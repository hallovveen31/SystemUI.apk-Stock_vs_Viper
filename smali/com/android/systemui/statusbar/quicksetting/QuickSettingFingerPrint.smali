.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingFingerPrint.java"


# instance fields
.field private demoObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private observerRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->handler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->demoObserver:Landroid/database/ContentObserver;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->observerRegister:Z

    .line 35
    const-string v0, "finger_print"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->tileLabel:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->updateDemoFLOstate()V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f020129

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 120
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateDemoFLOstate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_is_demo"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 138
    .local v0, enable:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->setEnabled(Z)V

    .line 140
    const-string v1, "QuickSettingFingerPrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDemoFLOstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 43
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 45
    .local v0, indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 48
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->onLocaleChanged()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->updateDemoFLOstate()V

    .line 77
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 79
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->observerRegister:Z

    if-nez v2, :cond_1

    .line 81
    const-string v2, "htc_is_demo"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->observerRegister:Z

    .line 85
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->setOnOverlayChangeListener(I)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->demoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->observerRegister:Z

    .line 102
    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, resource:Landroid/content/res/Resources;
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, textview:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 113
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->setAlpha(F)V

    .line 148
    return-void

    .line 147
    :cond_0
    const v0, 0x3e99999a

    goto :goto_0
.end method
