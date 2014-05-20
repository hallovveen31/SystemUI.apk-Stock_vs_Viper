.class Lcom/android/systemui/statusbar/preference/Flashlight$1;
.super Ljava/lang/Object;
.source "Flashlight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;

    move-result-object v0

    invoke-virtual {v0}, Lvenom/common/FlashLight;->getCurrentBrightness()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setBrightness(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->mFlash:Lvenom/common/FlashLight;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$0(Lcom/android/systemui/statusbar/preference/Flashlight;)Lvenom/common/FlashLight;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvenom/common/FlashLight;->setBrightness(I)V

    goto :goto_0
.end method
