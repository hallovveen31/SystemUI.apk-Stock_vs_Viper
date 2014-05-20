.class Lcom/android/systemui/statusbar/policy/AnalogClock$2;
.super Landroid/database/ContentObserver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AnalogClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AnalogClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock$2;->this$0:Lcom/android/systemui/statusbar/policy/AnalogClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock$2;->this$0:Lcom/android/systemui/statusbar/policy/AnalogClock;

    #calls: Lcom/android/systemui/statusbar/policy/AnalogClock;->updateResources()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->access$2(Lcom/android/systemui/statusbar/policy/AnalogClock;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock$2;->this$0:Lcom/android/systemui/statusbar/policy/AnalogClock;

    #calls: Lcom/android/systemui/statusbar/policy/AnalogClock;->onTimeChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->access$1(Lcom/android/systemui/statusbar/policy/AnalogClock;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock$2;->this$0:Lcom/android/systemui/statusbar/policy/AnalogClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->invalidate()V

    return-void
.end method
