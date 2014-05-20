.class Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$12;
.super Ljava/lang/Object;
.source "VenomStatusBarExtension.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->initHeaderClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$12;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$12;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->timePressed:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$12;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->SwipeDetect:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$40(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
