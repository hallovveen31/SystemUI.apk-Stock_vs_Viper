.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$1;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->access$0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)V

    return-void
.end method
