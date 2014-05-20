.class Lcom/android/systemui/statusbar/policy/Clock$2;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/Clock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-wide/16 v7, 0x3e8

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$7(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$2(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/Clock;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    rem-long v4, v0, v7

    sub-long v4, v7, v4

    add-long v2, v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/Clock;->access$8(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
