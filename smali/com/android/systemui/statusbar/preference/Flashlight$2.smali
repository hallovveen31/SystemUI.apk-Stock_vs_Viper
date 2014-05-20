.class Lcom/android/systemui/statusbar/preference/Flashlight$2;
.super Ljava/lang/Object;
.source "Flashlight.java"

# interfaces
.implements Lvenom/common/OnFlashLightChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Flashlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Flashlight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .locals 6

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v4, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v4, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    if-eqz p1, :cond_2

    const v0, 0x7f02052f

    :goto_1
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v4, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    if-nez p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    if-eqz p1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const v0, 0x7f02052e

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$2;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
