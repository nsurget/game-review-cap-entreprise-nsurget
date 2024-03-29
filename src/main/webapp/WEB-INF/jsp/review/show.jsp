<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../tag.jsp" %>
<c:set var="title" scope="request" value="review sur ${review.game.name} - ${review.gamer.nickname}"/>
<jsp:include flush="true" page="${contextPath}/WEB-INF/jsp/base.jsp"/>

<div class="container">
    <h1 class="title-with-margin">Review</h1>
    <div class="bg-dark-rounded-body">
        <div class="content-padding-2-5-2">
            <h2 class="mb-3">Review de <a class="btn-link" href="${UrlRoute.URL_USER}/${review.gamer.slug}">${review.gamer.nickname}</a> sur <a class="btn-link"
                                                                                                                                                href="${UrlRoute.URL_GAME}/${review.game.slug}">${review.game.name}</a>
            </h2>
<div class="row">
            <div class="col-6 row">
                <div class="col-12">
                    <div class="col-3 gap-1">
                        <p class="display-6 rounded bg-dark p-1 ms-auto">
                            <span class="${jspUtils.getCssClas(review.rating)}">${review.rating}</span>
                            <span> / 20 </span>
                        </p>
                    </div>
                    <div class="row mt-5">
                        <p class="col-4 ">
                            Le ${dateUtils.getDateFormat(review.createdAt, "dd/MM/yyyy")}
                        </p>
                        <figcaption class="col blockquote-footer">
                            <c:if test="${not empty review.moderator}">
                                Modéré par <cite title="Source Title">${review.moderator.nickname}</cite> -
                                le ${dateUtils.getDateFormat(review.moderatedAt, "dd/MM/yyyy")}
                            </c:if>
                            <c:if test="${empty review.moderator}">
                                <cite title="Source Title">En attente de moderation ⌛</cite>
                            </c:if>
                        </figcaption>
                    </div>

                    <p class="reviewDescription p-2 bg-dark rounded"><i class="fa-solid fa-quote-left"></i> - ${review.description} - <i class="fa-solid fa-quote-right"></i></p>
                </div>

            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 mt-5">
                <div class="main-game-card w-100 rounded">
                    <div class="card rounded mb-2">
                        <div class="row g-0 mt bg-dark rounded">
                            <div class="col-md-5">
                                <a class="btn-link" href="${UrlRoute.URL_GAME}/${review.game.slug}">
                                    <img src="${review.game.image}" class="img-fluid img-game-card rounded-start" alt="...">
                                </a>
                            </div>
                            <div class="col-md-7 d-flex flex-column">
                                <div class="card-body">
                                    <a class="btn-link" href="${UrlRoute.URL_GAME}/${review.game.slug}">
                                        <h5 class="card-title">${review.game.name}</h5>
                                    </a>
                                    <div class="content-description">
                                        <p class="inner-description">
                                            <span>${review.game.description}</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="ms-3 mt-auto"> <!-- Utilisez mt-auto pour aligner en bas -->
                                    <p>
                                        <span class="${jspUtils.getCssClas(review.game.rating())}">${review.game.rating()}</span>
                                        <span> / 20 </span>
                                    </p>
                                    <p class="card-text"><small class="text-body-secondary">Date de sortie : ${review.game.publishedAt}</small></p>
                                    <p class="card-text"><small class="text-body-secondary">Disponible sur : </small></p>
                                    <p class="logoContainer">
                                        <c:forEach items="${review.game.platforms}" var="platform">
                                            <img src="${platform.logo}" alt="${platform.name}" title="${platform.name}" class="logoPlatform">
                                        </c:forEach>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>

<%@ include file="../footer.jsp" %>
