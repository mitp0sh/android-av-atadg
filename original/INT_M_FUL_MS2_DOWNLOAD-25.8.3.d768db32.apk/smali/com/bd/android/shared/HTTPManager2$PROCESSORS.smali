.class public Lcom/bd/android/shared/HTTPManager2$PROCESSORS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROCESSOR_ANTITEFT:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_CLUEFUL:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_ERRORS:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_KATASTIF:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_LITHIUM:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_TEST_DEVEL:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

.field public static final PROCESSOR_WEBSECURITY:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "url"

    const-string v2, "status"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_WEBSECURITY:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 96
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "jose"

    const-string v2, "scanner_v2"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_SCANNER:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 97
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "jose"

    const-string v2, "clueful"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_CLUEFUL:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 98
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "jose"

    const-string v2, "lithium"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_LITHIUM:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 99
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "jose"

    const-string v2, "errors"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_ERRORS:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 100
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "katastif"

    const-string v2, "manager"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_KATASTIF:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 102
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "automated"

    const-string v2, "jose"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_TEST_DEVEL:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    .line 104
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    const-string v1, "antitheft"

    const-string v2, "feeder"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$PROCESSOR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$PROCESSORS;->PROCESSOR_ANTITEFT:Lcom/bd/android/shared/HTTPManager2$PROCESSOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
