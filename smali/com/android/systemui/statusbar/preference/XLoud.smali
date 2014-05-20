.class public Lcom/android/systemui/statusbar/preference/XLoud;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "XLoud.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/XLoud$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/XLoud$1;-><init>(Lcom/android/systemui/statusbar/preference/XLoud;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/XLoud$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/XLoud$2;-><init>(Lcom/android/systemui/statusbar/preference/XLoud;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/XLoud;->updateResources()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/XLoud;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/XLoud;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/XLoud;->setXLoud(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/XLoud;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private refreshSummary()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_use_xloud"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/XLoud;->setSummary(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/XLoud;->setSummary(Z)V

    goto :goto_0
.end method

.method private setSummary(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f0a0153

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const v1, 0x7f0a0154

    goto :goto_0
.end method

.method private setXLoud(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v0, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_use_xloud"

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.venom.action.XLOUD_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.venom.action.XLOUD_STATUS"

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/XLoud;->setSummary(Z)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02054e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/XLoud;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/XLoud;->refreshSummary()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/XLoud;->refreshSummary()V

    return-void
.end method
