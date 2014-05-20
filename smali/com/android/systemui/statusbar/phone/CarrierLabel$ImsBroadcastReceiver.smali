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
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;Lcom/android/systemui/statusbar/phone/CarrierLabel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v1, "IMS_REG_STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsRegistered:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$102(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)Z

    .line 226
    return-void
.end method
