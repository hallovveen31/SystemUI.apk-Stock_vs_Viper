.class Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsBroadcastReceiver"
.end annotation


# instance fields
.field final this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field final synthetic this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v1, "IMS_REG_STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsRegistered:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$6(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)V

    return-void
.end method
