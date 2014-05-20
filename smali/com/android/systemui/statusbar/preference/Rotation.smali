.class public Lcom/android/systemui/statusbar/preference/Rotation;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Rotation.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/Rotation$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Rotation$1;-><init>(Lcom/android/systemui/statusbar/preference/Rotation;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Rotation$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Rotation$2;-><init>(Lcom/android/systemui/statusbar/preference/Rotation;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Rotation;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02053d

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/Rotation;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
