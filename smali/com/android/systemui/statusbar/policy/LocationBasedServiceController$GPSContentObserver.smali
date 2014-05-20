.class Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;
.super Landroid/database/ContentObserver;
.source "LocationBasedServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPSContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "LbsController"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    #calls: Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateValue()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->access$0(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    #calls: Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->access$1(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V

    return-void
.end method
