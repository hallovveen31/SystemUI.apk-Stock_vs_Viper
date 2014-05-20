.class public Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mTag:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v11, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v3, -0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1

    new-array v5, v13, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    aget v7, v5, v12

    aget v8, v5, v11

    aget v9, v5, v12

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    aget v10, v5, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSenderPerformType()I

    move-result v3

    if-ne v3, v13, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/PendingIntent;->addIntentHtcFlag(I)V

    :cond_0
    const-string v7, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notification.launch:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v3, v13, :cond_3

    const-string v6, "INTENT_SENDER_ACTIVITY"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v6, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->dismiss()V

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mTag:Ljava/lang/String;

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mId:I

    invoke-interface {v6, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    if-eq v3, v13, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending contentIntent failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/HtcIfIntent;->getHtcIntentFlag()I

    move-result v2

    and-int/lit8 v6, v2, 0x4

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    invoke-virtual {v6, v12, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanelsDelay(ILjava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v6, "StatusBar"

    const-string v7, "notificationClick mIntent is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_3

    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method
