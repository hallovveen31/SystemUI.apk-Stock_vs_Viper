.class Lcom/android/systemui/statusbar/powerwidget/Toggle$3;
.super Ljava/lang/Object;
.source "Toggle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/Toggle;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method
