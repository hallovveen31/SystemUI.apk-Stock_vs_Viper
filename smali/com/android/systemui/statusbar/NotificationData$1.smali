.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 9

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v6

    sub-int v0, v5, v6

    #getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v5

    #getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v6

    if-eq v5, v6, :cond_2

    #getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v5, v5, Landroid/app/Notification;->when:J

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v7, v7, Landroid/app/Notification;->when:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
