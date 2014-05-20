.class Lcom/android/systemui/statusbar/phone/CarrierLabel$3;
.super Ljava/lang/Object;
.source "CarrierLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "CarrierLabel"

    const-string v1, "updateCarrierLabel+"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$1102(Z)Z

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    .line 487
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 488
    const-string v0, "CarrierLabel"

    const-string v1, "updateCarrierLabel-"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    return-void
.end method
