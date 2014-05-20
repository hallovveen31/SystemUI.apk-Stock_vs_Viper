.class public Lcom/android/systemui/statusbar/preference/Flashlight;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Flashlight.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mFlash:Lvenom/common/FlashLight;

.field private mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lvenom/common/FlashLight;->getInstance(Landroid/content/Context;)Lvenom/common/FlashLight;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Flashlight$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Flashlight$1;-><init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Flashlight$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Flashlight$2;-><init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Flashlight$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Flashlight$3;-><init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Flashlight$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Flashlight$4;-><init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Flashlight;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Flashlight;->updateResources()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02052e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/Flashlight;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setOnFlashLightChangedLister(Lvenom/common/OnFlashLightChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mFlashObserver:Lvenom/common/OnFlashLightChangedListener;

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->removeOnFlashLightChangedLister(Lvenom/common/OnFlashLightChangedListener;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
