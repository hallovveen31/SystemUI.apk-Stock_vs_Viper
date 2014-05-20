.class Lcom/android/systemui/statusbar/phone/CarrierLabel$3;
.super Ljava/lang/Object;
.source "CarrierLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field final synthetic this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    const-string v1, "updateCarrierLabel+"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$11(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    const-string v0, "CarrierLabel"

    const-string v1, "updateCarrierLabel-"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
