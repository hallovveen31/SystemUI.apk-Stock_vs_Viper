.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$3;
.super Landroid/database/ContentObserver;
.source "QuickSettingTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->updateDemoFLOstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)V

    .line 293
    return-void
.end method
