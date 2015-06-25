.class public Lde/gdata/mobilesecurity/secsrv/ServerResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTNET:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final CHILDSAFE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final CLASSIFIED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final ENCRYPTION_ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final MALWARE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final NOCONNECTION:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final NORESPONSE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final PHISHING:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final RESULT_ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final REVOKED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final SCAM:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final STATGOOGLE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final STATNETCRAFT:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final STATPLAIN:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final STATRULESPACE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

.field public static final WHITELISTED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->RESULT_ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 6
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->ENCRYPTION_ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 7
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->MALWARE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 8
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->PHISHING:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 9
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->CLASSIFIED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 10
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->WHITELISTED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 12
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->REVOKED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 14
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->SCAM:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 17
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->BOTNET:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 18
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->STATPLAIN:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 19
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->STATGOOGLE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 20
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->STATRULESPACE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 21
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->STATNETCRAFT:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 22
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->CHILDSAFE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 24
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/high16 v1, 0x20000000

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NORESPONSE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 25
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->NOCONNECTION:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    .line 26
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;-><init>(I)V

    sput-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->ERROR:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public isChildsafe()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->CHILDSAFE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v0

    return v0
.end method

.method public isMalicious()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->WHITELISTED:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->MALWARE:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->PHISHING:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->SCAM:Lde/gdata/mobilesecurity/secsrv/ServerResponse;

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSet(Lde/gdata/mobilesecurity/secsrv/ServerResponse;)Z
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->a:I

    iget v1, p1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->a:I

    and-int/2addr v0, v1

    iget v1, p1, Lde/gdata/mobilesecurity/secsrv/ServerResponse;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
