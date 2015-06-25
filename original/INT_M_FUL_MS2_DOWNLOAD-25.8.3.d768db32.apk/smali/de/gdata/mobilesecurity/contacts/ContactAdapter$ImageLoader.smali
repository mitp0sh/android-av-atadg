.class Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field mData:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;",
            ">;"
        }
    .end annotation
.end field

.field mEmptyImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIsCanceled:Z

.field mLoadedPictures:Lde/gdata/mobilesecurity/util/CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/gdata/mobilesecurity/util/CacheMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 70
    new-instance v0, Lde/gdata/mobilesecurity/util/CacheMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/CacheMap;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mLoadedPictures:Lde/gdata/mobilesecurity/util/CacheMap;

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mData:Ljava/util/Stack;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mEmptyImages:Ljava/util/Set;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mIsCanceled:Z

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->setPriority(I)V

    .line 80
    return-void
.end method

.method private declared-synchronized addDrawable(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mLoadedPictures:Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/util/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;

    invoke-direct {v1, p0, p1, p2}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mEmptyImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sleep()V
    .locals 3

    .prologue
    .line 134
    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized loadImage(Ljava/lang/Integer;Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mLoadedPictures:Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-virtual {v1, p1}, Lde/gdata/mobilesecurity/util/CacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mLoadedPictures:Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/util/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 93
    :cond_1
    :try_start_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mEmptyImages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_defaulContactPicture:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->access$000(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;

    invoke-direct {v1, p0, p1, p2}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;Ljava/lang/Integer;Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;)V

    .line 96
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mData:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mData:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mData:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->sleep()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->mData:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;

    .line 109
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;->second:Ljava/lang/Object;

    check-cast v1, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;

    .line 112
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->addDrawable(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method
