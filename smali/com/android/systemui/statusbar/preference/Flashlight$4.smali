.class Lcom/android/systemui/statusbar/preference/Flashlight$4;
.super Ljava/lang/Object;
.source "Flashlight.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$4;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$4;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setBrightness(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$4;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setBrightness(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$4;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setBrightness(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
