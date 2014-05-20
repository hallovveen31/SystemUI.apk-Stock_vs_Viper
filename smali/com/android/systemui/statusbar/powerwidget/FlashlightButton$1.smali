.class Lcom/android/systemui/statusbar/powerwidget/FlashlightButton$1;
.super Ljava/lang/Object;
.source "FlashlightButton.java"

# interfaces
.implements Lvenom/common/OnFlashLightChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method
