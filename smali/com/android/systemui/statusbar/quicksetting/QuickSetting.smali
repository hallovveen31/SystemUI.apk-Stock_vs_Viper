.class public Lcom/android/systemui/statusbar/quicksetting/QuickSetting;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSetting.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "settings"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->tileLabel:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f020151

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 101
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 43
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 45
    .local v0, indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    if-eqz v0, :cond_0

    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 49
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSetting;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->onLocaleChanged()V

    .line 74
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->setOnOverlayChangeListener(I)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, resource:Landroid/content/res/Resources;
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, textview:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 94
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 97
    :cond_0
    return-void
.end method
