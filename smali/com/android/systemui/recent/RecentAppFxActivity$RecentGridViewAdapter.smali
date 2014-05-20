.class public Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentAppFxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentGridViewAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 758
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 759
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$1000(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 770
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 775
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$1000(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$1000(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 777
    .local v0, td:Lcom/android/systemui/recent/TaskDescription;
    if-nez p2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040061

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/FrameLayout;

    .line 779
    .restart local p2
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 781
    new-instance v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Lcom/android/systemui/recent/RecentAppFxActivity$1;)V

    .line 782
    .local v1, viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
    const v2, 0x7f070004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    .line 783
    const v2, 0x7f070042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    .line 785
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 786
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 788
    .end local v1           #viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
    :cond_0
    sget-boolean v2, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "RecentApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecentGridViewAdapter - getView : pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", convertView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    .line 791
    .restart local v1       #viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
    iput-object v0, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    .line 792
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$000(Lcom/android/systemui/recent/RecentAppFxActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    move-object v2, p2

    .line 793
    check-cast v2, Lcom/android/systemui/recent/RecentsItemView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recent/RecentsItemView;->setDrawableAlpha(I)V

    .line 794
    iget-object v2, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 797
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 798
    sget-boolean v2, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v3, "RecentApps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecentGridViewAdapter - getView : Label = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_3
    iget-object v3, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iget-object v3, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #calls: Lcom/android/systemui/recent/RecentAppFxActivity;->updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v2, v3, v4}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$1200(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$1300(Lcom/android/systemui/recent/RecentAppFxActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    .line 803
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 804
    iput-boolean v5, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    .line 811
    :cond_4
    :goto_0
    return-object p2

    .line 807
    :cond_5
    iget-boolean v2, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    if-eqz v2, :cond_4

    .line 808
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2, p2, v5}, Lcom/android/systemui/recent/RecentAppFxActivity;->playAlphaAnimate(Landroid/view/View;Z)V

    goto :goto_0
.end method
