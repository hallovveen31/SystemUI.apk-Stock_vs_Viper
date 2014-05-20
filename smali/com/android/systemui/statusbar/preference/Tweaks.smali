.class public Lcom/android/systemui/statusbar/preference/Tweaks;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Tweaks.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/Tweaks$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Tweaks$1;-><init>(Lcom/android/systemui/statusbar/preference/Tweaks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Tweaks;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Tweaks;->updateResources()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02054a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/Tweaks;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
