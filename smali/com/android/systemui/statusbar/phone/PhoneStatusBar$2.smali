.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x1

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PhoneStatusBar"

    const-string v2, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    const/16 v2, 0x403

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0
.end method
