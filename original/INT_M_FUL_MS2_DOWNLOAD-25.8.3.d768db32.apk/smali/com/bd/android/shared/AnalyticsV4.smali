.class public Lcom/bd/android/shared/AnalyticsV4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/bd/android/shared/AnalyticsV4;


# instance fields
.field private a:Lcom/google/android/gms/analytics/ak;

.field private c:Lcom/google/android/gms/analytics/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/bd/android/shared/AnalyticsV4;->b:Lcom/bd/android/shared/AnalyticsV4;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;

    .line 38
    iput-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    .line 42
    invoke-direct {p0, p1}, Lcom/bd/android/shared/AnalyticsV4;->a(Landroid/app/Application;)V

    .line 43
    invoke-direct {p0, p2}, Lcom/bd/android/shared/AnalyticsV4;->a(I)V

    .line 44
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/c;->a(I)Lcom/google/android/gms/analytics/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;

    .line 60
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    if-nez v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    .line 50
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/c;->a(Landroid/app/Application;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/bd/android/shared/AnalyticsV4;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/bd/android/shared/AnalyticsV4;->b:Lcom/bd/android/shared/AnalyticsV4;

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;I)Lcom/bd/android/shared/AnalyticsV4;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/bd/android/shared/AnalyticsV4;->b:Lcom/bd/android/shared/AnalyticsV4;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/bd/android/shared/AnalyticsV4;

    invoke-direct {v0, p0, p1}, Lcom/bd/android/shared/AnalyticsV4;-><init>(Landroid/app/Application;I)V

    sput-object v0, Lcom/bd/android/shared/AnalyticsV4;->b:Lcom/bd/android/shared/AnalyticsV4;

    .line 35
    :cond_0
    sget-object v0, Lcom/bd/android/shared/AnalyticsV4;->b:Lcom/bd/android/shared/AnalyticsV4;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispatchLocalHits()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableAdvertisingIdCollection(Z)V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ak;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/google/android/gms/analytics/d$d;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/d$d;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/d$d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized trackActivityStart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/c;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackActivityStop(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->c:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/c;->c(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    new-instance v1, Lcom/google/android/gms/analytics/d$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/analytics/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/d$a;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/d$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    new-instance v1, Lcom/google/android/gms/analytics/d$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/analytics/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/d$a;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$a;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/analytics/d$a;->a(J)Lcom/google/android/gms/analytics/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/d$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized trackScreen(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/google/android/gms/analytics/d$d;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/d$d;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/d$d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized trackTimingEvent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/AnalyticsV4;->a:Lcom/google/android/gms/analytics/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    new-instance v1, Lcom/google/android/gms/analytics/d$e;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/google/android/gms/analytics/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, p5}, Lcom/google/android/gms/analytics/d$e;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/d$e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
