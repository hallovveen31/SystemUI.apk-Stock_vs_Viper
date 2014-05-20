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
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 152
    const-string v0, "LbsController"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    #calls: Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateValue()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->access$200(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController$GPSContentObserver;->this$0:Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    #calls: Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->updateIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->access$300(Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;)V

    .line 155
    return-void
.end method
