.class public final Lcom/google/android/gms/appstate/AppStateManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

.field static final a:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/ib;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->a:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/appstate/c;

    invoke-direct {v0}, Lcom/google/android/gms/appstate/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->b:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/appstate"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/appstate/AppStateManager;->b:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/appstate/AppStateManager;->a:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/ib;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/jx;->b(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/appstate/AppStateManager;->a:Lcom/google/android/gms/common/api/Api$c;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jx;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appstate/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/g;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxNumKeys(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ib;->fM()I

    move-result v0

    return v0
.end method

.method public static getMaxStateSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ib;->fL()I

    move-result v0

    return v0
.end method

.method public static list(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/j;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/i;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/i;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/appstate/k;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public static signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/l;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appstate/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/appstate/e;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    return-void
.end method

.method public static updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/appstate/f;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
