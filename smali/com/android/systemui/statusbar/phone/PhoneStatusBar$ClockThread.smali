.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;
.super Ljava/lang/Thread;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockThread"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "ClockThread"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->startUpdate()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public startUpdate()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ClockThread"

    const-string v1, "start update clock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopUpdate()V
    .locals 2

    const-string v0, "ClockThread"

    const-string v1, "stop update clock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
