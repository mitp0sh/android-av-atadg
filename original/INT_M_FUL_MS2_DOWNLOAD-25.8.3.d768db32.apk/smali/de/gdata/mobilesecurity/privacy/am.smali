.class Lde/gdata/mobilesecurity/privacy/am;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/util/CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/gdata/mobilesecurity/util/CacheMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lde/gdata/mobilesecurity/privacy/ao;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:Lde/gdata/mobilesecurity/privacy/ag;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/privacy/ag;)V
    .locals 2

    .prologue
    .line 950
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/am;->e:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 944
    new-instance v0, Lde/gdata/mobilesecurity/util/CacheMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/CacheMap;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->a:Lde/gdata/mobilesecurity/util/CacheMap;

    .line 945
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->b:Ljava/util/Stack;

    .line 946
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->c:Ljava/util/Set;

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/am;->d:Z

    .line 952
    return-void
.end method

.method private declared-synchronized a(Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 997
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 998
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->a:Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-virtual {v0, p1, p2}, Lde/gdata/mobilesecurity/util/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->e:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/privacy/an;

    invoke-direct {v1, p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/an;-><init>(Lde/gdata/mobilesecurity/privacy/am;Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    monitor-exit p0

    return-void

    .line 1000
    :cond_0
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1013
    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a(JJLde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 964
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 966
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/am;->a:Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/CacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->a:Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 967
    :cond_1
    :try_start_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/am;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->e:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 968
    :cond_2
    new-instance v2, Lde/gdata/mobilesecurity/privacy/ao;

    invoke-direct {v2, p0, v1, p5}, Lde/gdata/mobilesecurity/privacy/ao;-><init>(Lde/gdata/mobilesecurity/privacy/am;Landroid/util/Pair;Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V

    .line 970
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/am;->b:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/am;->b:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 955
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/am;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 959
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/am;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    monitor-exit p0

    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 977
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/am;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 978
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/am;->c()V

    goto :goto_0

    .line 982
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/am;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/ao;

    .line 983
    if-eqz v0, :cond_0

    .line 985
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ao;->second:Ljava/lang/Object;

    check-cast v1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 986
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoto()[B

    move-result-object v1

    .line 988
    if-eqz v1, :cond_2

    .line 989
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, ""

    invoke-static {v2, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 992
    :goto_1
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ao;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/am;->a(Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 991
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 994
    :cond_3
    return-void
.end method
