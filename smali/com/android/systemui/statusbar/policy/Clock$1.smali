.class Lcom/android/systemui/statusbar/policy/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/Clock$1;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    #setter for: Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$0(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    new-instance v4, Lcom/android/systemui/statusbar/policy/Clock$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/Clock$1$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock$1;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/Clock;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Clock;->access$1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Clock;->access$1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$2(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void

    :cond_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Clock;->access$3(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #setter for: Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$4(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    const-string v4, ""

    #setter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$5(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)V

    goto :goto_0
.end method
