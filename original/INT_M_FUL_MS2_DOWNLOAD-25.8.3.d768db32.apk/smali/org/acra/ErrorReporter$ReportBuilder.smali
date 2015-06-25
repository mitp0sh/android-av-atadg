.class public final Lorg/acra/ErrorReporter$ReportBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Thread;

.field private d:Ljava/lang/Throwable;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1027
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->a:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->f:Z

    .line 1035
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->g:Z

    return-void
.end method

.method private a(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->c:Ljava/lang/Thread;

    .line 1056
    return-object p0
.end method

.method static synthetic a(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->a(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->e:Ljava/util/Map;

    .line 1073
    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->f:Z

    return v0
.end method

.method static synthetic b(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->d:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic d(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic f(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->g:Z

    return v0
.end method


# virtual methods
.method public customData(Ljava/lang/String;Ljava/lang/String;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1099
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportBuilder;->a()V

    .line 1100
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    return-object p0
.end method

.method public customData(Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ErrorReporter$ReportBuilder;"
        }
    .end annotation

    .prologue
    .line 1084
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportBuilder;->a()V

    .line 1085
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1086
    return-object p0
.end method

.method public endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->g:Z

    .line 1121
    return-object p0
.end method

.method public exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->d:Ljava/lang/Throwable;

    .line 1067
    return-object p0
.end method

.method public forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->f:Z

    .line 1111
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->b:Ljava/lang/String;

    .line 1045
    return-object p0
.end method

.method public send()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1129
    const-string v0, "Report requested by developer"

    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->b:Ljava/lang/String;

    .line 1131
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->a:Lorg/acra/ErrorReporter;

    invoke-static {v0, p0}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V

    .line 1132
    return-void
.end method
