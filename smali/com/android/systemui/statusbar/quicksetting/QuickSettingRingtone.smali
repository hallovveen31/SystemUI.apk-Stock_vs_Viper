.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingRingtone.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "ringtone"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f020141

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 124
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isDualModeEnable()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    return v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 41
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 43
    .local v0, indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 47
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->onLocaleChanged()V

    .line 97
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 111
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, resource:Landroid/content/res/Resources;
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    .local v1, textview:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 118
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method
